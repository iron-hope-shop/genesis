# Genesis Code Patterns & Best Practices

This document provides reusable patterns and best practices for various technologies and common coding scenarios. Reference these when generating or modifying code to ensure consistency and quality.

## General Coding Principles

Regardless of the language or framework, follow these principles:

- **DRY (Don't Repeat Yourself)**: Avoid duplication through abstraction
- **KISS (Keep It Simple, Stupid)**: Favor simplicity over complexity
- **YAGNI (You Aren't Gonna Need It)**: Don't add functionality until it's necessary
- **SRP (Single Responsibility Principle)**: Each component should have only one reason to change
- **Defensive Programming**: Validate inputs and handle errors gracefully
- **Comments**: Explain "why", not "what" (code should be self-documenting)
- **Consistent Formatting**: Follow established style guidelines for the language

## JavaScript/TypeScript Patterns

### Async/Await Pattern
```javascript
// Preferred approach for async operations
async function fetchData() {
  try {
    const response = await fetch('https://api.example.com/data');
    if (!response.ok) throw new Error(`HTTP error ${response.status}`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Failed to fetch data:', error);
    throw error; // Re-throw for caller to handle if needed
  }
}
```

### React Component Pattern
```jsx
// Functional component with hooks
import React, { useState, useEffect } from 'react';

const UserProfile = ({ userId }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchUser = async () => {
      try {
        setLoading(true);
        const data = await fetchUserData(userId);
        setUser(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchUser();
  }, [userId]);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!user) return <div>No user found</div>;

  return (
    <div className="user-profile">
      <h2>{user.name}</h2>
      <p>{user.email}</p>
    </div>
  );
};

export default UserProfile;
```

## Python Patterns

### Context Manager Pattern
```python
class ResourceManager:
    def __init__(self, resource_name):
        self.resource_name = resource_name
        
    def __enter__(self):
        print(f"Acquiring {self.resource_name}")
        # Acquire the resource
        return self  # Return the resource
        
    def __exit__(self, exc_type, exc_val, exc_tb):
        print(f"Releasing {self.resource_name}")
        # Release the resource
        if exc_type is not None:
            print(f"An exception occurred: {exc_val}")
            # Handle exception or let it propagate
            return False  # Re-raise the exception

# Usage
with ResourceManager("database connection") as resource:
    # Use the resource
    pass  # Resource is automatically released
```

### API Route Pattern (FastAPI)
```python
from fastapi import FastAPI, HTTPException, Depends
from typing import List, Optional
from pydantic import BaseModel

app = FastAPI()

class Item(BaseModel):
    id: Optional[int] = None
    name: str
    description: Optional[str] = None
    price: float

@app.get("/items/{item_id}", response_model=Item)
async def read_item(item_id: int):
    item = await get_item_from_db(item_id)
    if item is None:
        raise HTTPException(status_code=404, detail="Item not found")
    return item

@app.post("/items/", response_model=Item)
async def create_item(item: Item):
    # Validate input
    if item.price < 0:
        raise HTTPException(status_code=400, detail="Price cannot be negative")
    
    # Save to database
    result = await save_item_to_db(item)
    return result
```

## Database Patterns

### Repository Pattern
```typescript
// TypeScript example with a repository pattern
interface UserRepository {
  findById(id: string): Promise<User | null>;
  findAll(): Promise<User[]>;
  create(userData: UserCreateData): Promise<User>;
  update(id: string, userData: Partial<UserUpdateData>): Promise<User | null>;
  delete(id: string): Promise<boolean>;
}

// Implementation with MongoDB
class MongoUserRepository implements UserRepository {
  private collection: Collection<UserDocument>;
  
  constructor(db: Db) {
    this.collection = db.collection('users');
  }
  
  async findById(id: string): Promise<User | null> {
    const doc = await this.collection.findOne({ _id: new ObjectId(id) });
    return doc ? this.mapToUser(doc) : null;
  }
  
  // ... other methods
}
```

### SQL Query Pattern
```sql
-- Using parameterized queries to prevent SQL injection
SELECT u.id, u.username, p.name as permission
FROM users u
JOIN user_permissions up ON u.id = up.user_id
JOIN permissions p ON up.permission_id = p.id
WHERE u.status = 'active'
  AND (u.username LIKE ? OR u.email LIKE ?)
ORDER BY u.created_at DESC
LIMIT ? OFFSET ?;
```

## API Design Patterns

### RESTful Resource Pattern
```
GET /api/v1/resources           # List resources
GET /api/v1/resources/:id       # Get a specific resource
POST /api/v1/resources          # Create a new resource
PUT /api/v1/resources/:id       # Update a resource (complete replacement)
PATCH /api/v1/resources/:id     # Partial update of a resource
DELETE /api/v1/resources/:id    # Delete a resource
```

### GraphQL Query Pattern
```graphql
# Schema definition
type User {
  id: ID!
  username: String!
  email: String!
  posts: [Post!]
}

type Post {
  id: ID!
  title: String!
  content: String!
  author: User!
  createdAt: String!
}

type Query {
  user(id: ID!): User
  users(limit: Int, offset: Int): [User!]!
  post(id: ID!): Post
  posts(authorId: ID, limit: Int, offset: Int): [Post!]!
}

# Example query
query {
  user(id: "123") {
    username
    posts {
      title
      createdAt
    }
  }
}
```

## Testing Patterns

### Unit Test Pattern
```javascript
// Jest example
describe('UserService', () => {
  let userService;
  let mockUserRepository;
  
  beforeEach(() => {
    mockUserRepository = {
      findById: jest.fn(),
      create: jest.fn(),
      // ... other methods
    };
    userService = new UserService(mockUserRepository);
  });
  
  describe('getUserById', () => {
    it('should return user when user exists', async () => {
      // Arrange
      const mockUser = { id: '123', username: 'test' };
      mockUserRepository.findById.mockResolvedValue(mockUser);
      
      // Act
      const result = await userService.getUserById('123');
      
      // Assert
      expect(result).toEqual(mockUser);
      expect(mockUserRepository.findById).toHaveBeenCalledWith('123');
    });
    
    it('should throw error when user does not exist', async () => {
      // Arrange
      mockUserRepository.findById.mockResolvedValue(null);
      
      // Act & Assert
      await expect(userService.getUserById('123')).rejects.toThrow('User not found');
    });
  });
});
```

## Error Handling Patterns

### Try-Catch with Custom Error Classes
```typescript
// Custom error classes
class ApplicationError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'ApplicationError';
  }
}

class NotFoundError extends ApplicationError {
  constructor(resource: string, id: string) {
    super(`${resource} with id ${id} not found`);
    this.name = 'NotFoundError';
  }
}

// Using custom errors
try {
  const user = await userService.findById(userId);
  if (!user) {
    throw new NotFoundError('User', userId);
  }
  // Process user
} catch (error) {
  if (error instanceof NotFoundError) {
    // Handle not found case
    return res.status(404).json({ error: error.message });
  } else if (error instanceof ApplicationError) {
    // Handle other application errors
    return res.status(400).json({ error: error.message });
  } else {
    // Handle unexpected errors
    console.error('Unexpected error:', error);
    return res.status(500).json({ error: 'An unexpected error occurred' });
  }
}
```

## Configuration Patterns

### Environment-Based Configuration
```javascript
// config.js
const environments = {
  development: {
    database: {
      host: 'localhost',
      port: 5432,
      name: 'app_dev',
      user: 'dev_user',
      password: 'dev_password',
    },
    api: {
      baseUrl: 'http://localhost:3000',
      timeout: 5000,
    },
    logging: {
      level: 'debug',
    },
  },
  production: {
    database: {
      host: process.env.DB_HOST,
      port: parseInt(process.env.DB_PORT || '5432', 10),
      name: process.env.DB_NAME,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
    },
    api: {
      baseUrl: process.env.API_BASE_URL,
      timeout: parseInt(process.env.API_TIMEOUT || '10000', 10),
    },
    logging: {
      level: process.env.LOG_LEVEL || 'info',
    },
  },
  test: {
    // Test configuration
  },
};

const env = process.env.NODE_ENV || 'development';
const config = environments[env];

export default config;
```

## Always Refer to These Patterns

When generating code, refer to these patterns to ensure consistency, maintainability, and adherence to best practices. Adapt them to the specific requirements of the project while maintaining their core principles. 