.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;
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
    name = "Info"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2038
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showInfo(Landroid/view/View;)V

    .line 2043
    return-void
.end method
