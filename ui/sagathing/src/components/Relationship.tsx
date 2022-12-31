import { Box } from "@mantine/core";
import { Group } from "@visx/group";
import { LinearGradient } from "@visx/gradient";
import Person from "./Person"

const defaultMargin = { top: 10, left: 10, right: 10, bottom: 10 };



export default function Relationship() {
  const [totalWidth, totalHeight] = [500, 500];
  const margin = defaultMargin;

  return (
    <Box>
      <svg width={totalWidth} height={totalHeight}>
        <LinearGradient id="links-gradient" from="#fd9b93" to="#fe6e9e" />
        <rect width={totalWidth} height={totalHeight} rx={4} fill="#272b4d" />
	<Group top={margin.top + 200}
          left={margin.left + 160}>
	<Person
          name={"Yngvild"}
          top={10}
          left={10}
        />
        {/* <line
          x1={80}
          y1={margin.top + 200}
          x2={margin.left + 280}
          y2={margin.top + 200}
          stroke={"red"}
          strokeWidth={1}
        /> */}
        <Person
          name={"Ketil Flatnose"}
          top={10}
          left={130}
        />
	</Group>
        
      </svg>
    </Box>
  );
}
