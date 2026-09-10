.class public final Lcom/yanzhenjie/recyclerview/swipe/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa

.field public static final recycler_swipe_SwipeMenuLayout:[I

.field public static final recycler_swipe_SwipeMenuLayout_contentViewId:I = 0x0

.field public static final recycler_swipe_SwipeMenuLayout_leftViewId:I = 0x1

.field public static final recycler_swipe_SwipeMenuLayout_rightViewId:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->RecyclerView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout:[I

    return-void

    :array_0
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0400aa
        0x7f0400ab
        0x7f0400ac
        0x7f0400ad
        0x7f0400ae
        0x7f0400ca
        0x7f04012f
        0x7f040163
        0x7f040169
    .end array-data

    :array_1
    .array-data 4
        0x7f04007c
        0x7f0400df
        0x7f040130
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
