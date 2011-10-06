public class BinarySearch{

    public static boolean BinarySearch(int[] a, int value) {
        int left = 0;
        int right = a.length - 1;

        while(right >= left) {
            int mid = (left + right) / 2;

            if(a[mid] == value) {
                return true;
            } else if (a[mid] > value) {
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }
        return false;
    }

    public static boolean BinarySearchRecurse(int[] a, int l, int r, int value) {
        if (l > r) {
            return false;
        }
        int mid = (l + r)/2;
        if (a[mid] == value ){
            return true;
        } else if (a[mid] > value) {
            return BinarySearchRecurse(a, l, mid - 1, value);
        } else {
            return BinarySearchRecurse(a, mid + 1, r, value);
        }
    }

    public static void main(String[] argv) {
        int[] test = new int[] {1, 3, 5, 7, 9, 11};

        System.out.println("" + BinarySearchRecurse(test,0, test.length - 1, 5));
    }

}
