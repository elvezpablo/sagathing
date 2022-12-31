import { Group } from "@visx/group";
type Props = {
  name: string;
  top: number;
  left: number;
};

export default function Person({ name, top, left }: Props) {
  const width = 100;
  const height = 30;
  return (
    <Group top={top} left={left}>
      <rect
        height={height}
        width={width}
        y={-height / 2}
        x={-width / 2}
        fill="rgba(33,33,33,.3)"
        stroke={"#26deb0"}
        strokeWidth={1}
        strokeOpacity={0.6}
        rx={1}
      />

      <text
        dy=".33em"
        fontSize=".8rem"
        textAnchor="middle"
        style={{ pointerEvents: "none" }}
        fill="#FFF"
      >
        {name}
      </text>
    </Group>
  );
}