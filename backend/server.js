const express = require('express');
const cors = require('cors');

const app = express();
const PORT = 8000;

app.use(cors());
app.use(express.json());

// Test route (will be added later by Mahek)

// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server is running on http://localhost:${PORT}`);
});
