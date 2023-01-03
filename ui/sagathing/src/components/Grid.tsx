import { Rect } from "../types";

type Props = {
  cellHeight: number;
  bounds: Rect;
};

export default function Grid({ cellHeight, bounds }: Props) {
  return (
    <>
      <line
        x1={bounds.width / 2}
        y1={0}
        x2={bounds.width / 2}
        y2={bounds.height}
        stroke="rgb(200,0,0,.4)"
      />

      <line
        x1={0}
        y1={cellHeight}
        x2={bounds.width}
        y2={cellHeight}
        stroke="rgb(200,0,0,.4)"
      />
      <line
        x1={0}
        y1={cellHeight * 2}
        x2={bounds.width}
        y2={cellHeight * 2}
        stroke="rgb(200,0,0,.4)"
      />
      <line
        x1={0}
        y1={cellHeight * 3}
        x2={bounds.width}
        y2={cellHeight * 3}
        stroke="rgb(200,0,0,.4)"
      />
      <line
        x1={0}
        y1={cellHeight * 4}
        x2={bounds.width}
        y2={cellHeight * 4}
        stroke="rgb(200,0,0,.4)"
      />
      <line
        x1={0}
        y1={cellHeight * 5}
        x2={bounds.width}
        y2={cellHeight * 5}
        stroke="rgb(200,0,0,.4)"
      />
    </>
  );
}
