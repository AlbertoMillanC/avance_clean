import React from 'react';
import { Container, Typography, Box } from '@mui/material';

function App() {
  return (
    <Container>
      <Box sx={{ my: 4 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          Obras Project
        </Typography>
        <Typography variant="body1">
          Welcome to the Obras Project management system.
        </Typography>
      </Box>
    </Container>
  );
}

export default App;
