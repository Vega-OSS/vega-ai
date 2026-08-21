import express, { Request, Response } from 'express';

const app = express();
const port = process.env.PORT || 3000;

app.get('/health', (req: Request, res: Response) => {
  res.json({ status: 'SERVING' });
});

app.listen(port, () => {
  console.log(`Vega BFF listening on port ${port}`);
});
