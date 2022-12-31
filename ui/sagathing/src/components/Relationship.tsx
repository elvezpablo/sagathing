import { Box } from "@mantine/core";
import { LinearGradient } from "@visx/gradient";

export default function Relationship() {
  const [totalWidth, totalHeight] = [500, 500];
  return (
    <Box>
      <svg width={totalWidth} height={totalHeight}>
        <LinearGradient id="links-gradient" from="#fd9b93" to="#fe6e9e" />
        <rect width={totalWidth} height={totalHeight} rx={14} fill="#272b4d" />
      </svg>
    </Box>
  );
}
