.class final Lcom/isaigu/gymapp/wearable/SearchPad$Back;
.super Ljava/lang/Object;
.source "SearchPad.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SearchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Back"
.end annotation


# instance fields
.field private final pad:Lcom/isaigu/gymapp/wearable/SearchPad;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SearchPad;)V
    .registers 2

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Back;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    .line 487
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 491
    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    .line 492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_f

    .line 493
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Back;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    # invokes: Lcom/isaigu/gymapp/wearable/SearchPad;->close()V
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->access$400(Lcom/isaigu/gymapp/wearable/SearchPad;)V

    .line 497
    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
