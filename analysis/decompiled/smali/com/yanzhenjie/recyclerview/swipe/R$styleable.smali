.class public final Lcom/yanzhenjie/recyclerview/swipe/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


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

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5

.field public static final recycler_swipe_SwipeMenuLayout:[I

.field public static final recycler_swipe_SwipeMenuLayout_contentViewId:I = 0x2

.field public static final recycler_swipe_SwipeMenuLayout_leftViewId:I = 0x0

.field public static final recycler_swipe_SwipeMenuLayout_rightViewId:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->RecyclerView:[I

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout:[I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f01016e
        0x7f01016f
        0x7f010170
        0x7f010171
        0x7f010172
        0x7f010173
        0x7f010174
        0x7f010175
        0x7f010176
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x7f0101d6
        0x7f0101d7
        0x7f0101d8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
