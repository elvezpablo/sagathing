import { LinearGradient } from "@visx/gradient";
import Grid from "./Grid";
import Person from "./Person";
import Spouses from "./Spouses";
const defaultMargin = { top: 10, left: 10, right: 10, bottom: 10 };
const generationHeight = 100;
const minSiblingWidth = 40;
export default function Tree() {
  const [totalWidth, totalHeight] = [800, 500];

  return (
    <svg width={totalWidth} height={totalHeight}>
      {/* background */}
      <LinearGradient id="links-gradient" from="#333" to="#222" />

      <rect
        width={totalWidth}
        height={totalHeight}
        fill="url('#links-gradient')"
      />
      <Grid
        cellHeight={generationHeight}
        bounds={{ x: 0, y: 0, width: totalWidth, height: totalHeight }}
      />
      <Spouses
        spouses={["Ufeig Clubfoot", "Upland Woman"]}
        top={generationHeight / 2 - 30 / 2}
        left={totalWidth / 2 - 220 / 2}
      />
      <path
        d={`
          M ${totalWidth / 2} ${generationHeight / 2}
          V ${generationHeight}
          H ${defaultMargin.left + Person.defaultProps.width}
          H ${totalWidth - defaultMargin.right}
	    `}
        stroke={"#26deb0"}
        strokeWidth={1}
        fill={"transparent"}
      />
      <Spouses
        spouses={[ "Onund Treefoot", "Thordis"]}
        top={generationHeight + generationHeight / 2 - 30 / 2}
        left={defaultMargin.left}
      />
      <Person
        name="Gudbiorg"
        top={generationHeight + generationHeight / 2 - 30 / 2}
        left={500}
      />
    </svg>
  );
}
