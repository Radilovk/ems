.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;
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
    name = "Details"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2342
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2343
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2347
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2348
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showDetail()V

    .line 2349
    return-void
.end method
