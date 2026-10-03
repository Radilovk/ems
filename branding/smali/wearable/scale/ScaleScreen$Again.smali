.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Again"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 699
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 703
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 704
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->startLink()V

    .line 705
    return-void
.end method
