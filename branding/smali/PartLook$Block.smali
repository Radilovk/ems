.class final Lcom/isaigu/gymapp/train/utils/PartLook$Block;
.super Ljava/lang/Object;
.source "PartLook.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/PartLook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Block"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 245
    # getter for: Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/PartLook;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
