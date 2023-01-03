import { Title, Text, Box, Container } from "@mantine/core";
import { Center } from "@mantine/core";

import Tree from "./components/Tree";

function App() {
  return (
    <>
      <Container>
        <Title order={2}>The Saga of Grettir the Strong</Title>
      </Container>
      <Container>
        <Text sx={{ fontFamily: "Signika", fontWeight: 700 }} size="lg">
          Pedigree of the family of Asmund of Biarg
        </Text>
        <Center>
          
        <Tree />
          
        </Center>
      </Container>
    </>
  );
}

export default App;
