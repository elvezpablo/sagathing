import { Title, Text, Box, Container } from "@mantine/core";
import Relationship from "./components/Relationship";

function App() {
  return (
    <div>
      <Container>
        <Title order={2}>The Saga of the People of Eyri</Title>
      </Container>
      <Container>
        <Text sx={{ fontFamily: "Signika", fontWeight: 700 }} size="lg">
          Relationship
        </Text>
        <Relationship />
      </Container>
    </div>
  );
}

export default App;
