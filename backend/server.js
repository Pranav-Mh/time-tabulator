const express = require('express');
const cors = require('cors');

const app = express();
const PORT = 8000;

app.use(cors());
app.use(express.json());

// ✅ Import and use the route
const testRoute = require('./routes/testRoute');
app.use("/", testRoute); // Now GET / will respond

// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server is running on http://localhost:${PORT}`);
});
