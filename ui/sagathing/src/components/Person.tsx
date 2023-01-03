import { Group } from "@visx/group";
type Props = {
  name: string;
  top: number;
  left: number;
  width: number;
  height: number;
};

export default function Person({
  name,
  top,
  left,
  width = 100,
  height = 30,
}: Props) {
  
  return (
    <Group top={top} left={left}>
      <rect
        height={height}
        width={width}
        fill="rgba(33,33,33,.3)"
        stroke={"#26deb0"}
        strokeWidth={1}
        strokeOpacity={1}
        rx={1}
      />

      <text
        x={width/2}
        y={height/2}
        width={width}
        alignmentBaseline="middle"
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

Person.defaultProps = {
  width: 100,
  height: 30,
};
