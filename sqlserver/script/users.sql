CREATE DATABASE users
GO

USE users
GO

CREATE TABLE users
(
    id INT NOT NULL IDENTITY,
    firstName VARCHAR (30),
    lastName VARCHAR (30),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    city VARCHAR (30),
    state VARCHAR (20),
    country VARCHAR (20),
    jobRole VARCHAR (30),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
)
GO

-- DROP TABLE users

INSERT INTO users
    (
    firstName,
    lastName,
    latitude,
    longitude,
    city,
    state,
    country,
    jobRole
    )
VALUES
    (
        'Angelo',
        'Medeiros',
        -7.316128,
        -37.5892087,
        'Patos',
        'Paraíba',
        'Brazil',
        'Frontend Developer'
),
    (
        'Emerson',
        'Castilho',
        -26.4108407,
        -56.1106927,
        'Maringá',
        'Paraná',
        'Brazil',
        'Product Owner'
)
GO

-- DROP TRIGGER triggerAfterUpdateAppUsersTable

CREATE TRIGGER triggerAfterUpdateAppUsersTable ON users AFTER INSERT, UPDATE AS
UPDATE users SET updatedAt = GETDATE() FROM inserted i WHERE i.id = users.id
GO