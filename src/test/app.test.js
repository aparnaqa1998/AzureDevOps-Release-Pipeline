const request = require('supertest');
const express = require('express');
const app = express();

app.get('/api/greet', (req, res) => {
  res.json({ message: 'Hello from Node.js API!' });
});

describe('GET /api/greet', () => {
  it('should return a greeting message', async () => {
    const res = await request(app).get('/api/greet');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('message', 'Hello from Node.js API!');
  });
});
