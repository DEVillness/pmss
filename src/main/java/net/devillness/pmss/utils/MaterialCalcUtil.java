package net.devillness.pmss.utils;

public class MaterialCalcUtil {
    public static class Material {
        private static int count = 0;
        private static int have = 0;
        private static int need = 0;

        public static int getRank() {
            return 0;
        }

        public static int getCount() {
            return count;
        }

        public void setCount(int count) {
            Material.count = count;
        }

        public static int getHave() {
            return have;
        }

        public void setHave(int have) {
            Material.have = have;
        }

        public static int getNeed() {
            return need;
        }

        public void setNeed(int need) {
            Material.need = need;
        }

        public static int getLack() {
            return Math.max((count + need - have), 0);
        }
    }

    public static class DamagedDevice extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class Diketon extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class OrironShard extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class Ester extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class SugarSubstitute extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class Orirock extends Material {
        public static int getRank() {
            return 1;
        }
    }

    public static class Device extends Material {
        public static int getRank() {
            return 2;
        }

    }

    public static class Polyketon extends Material {
        public static int getRank() {
            return 2;
        }
    }

    public static class Oriron extends Material {
        public static int getRank() {
            return 2;
        }
    }

    public static class Polyester extends Material {
        public static int getRank() {
            return 2;
        }
    }

    public static class Sugar extends Material {
        public static int getRank() {
            return 2;
        }
    }

    public static class OrirockCube extends Material {
        public static int getRank() {
            return 2;
        }
    }
}
