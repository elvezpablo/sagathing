import { Group } from "@visx/group";
import Person from "./Person";

type Props = {
  top: number;
  left: number;
  spouses: string[];
};

const defaultMargin = { top: 0, left: 0, right: 0, bottom: 0 };
const gap = 20;

export default function Spouses({ spouses, top, left }: Props) {
  Person.defaultProps.width;
  
  const margin = defaultMargin;
  const height = Person.defaultProps.height;
  const totalHeight = height + margin.top + margin.bottom;
  const verticalCenter = totalHeight / 2;

  return (
    <Group top={top} left={left}>
      {/* <rect width={totalWidth} height={totalHeight} rx={4} fill="rgba(200,200,200,.1)" /> */}
      {spouses.map((s, i) => {
        const w = Person.defaultProps.width;
        return (
          <>
            <Person
              name={s}
              top={margin.top}
              left={margin.left + i * w + gap * i}
            />
            {i > 0 && (
              <line
                x1={margin.left + i * w + gap * (i-1)}
                y1={verticalCenter}
                x2={margin.left + i * w + gap * i}
                y2={verticalCenter}
                stroke={"#26deb0"}
                strokeWidth={1}
              />
            )}
          </>
        );
      })}
    </Group>
  );
}
