.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;
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
    name = "CardInfo"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2395
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2396
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;->key:Ljava/lang/String;

    .line 2397
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2401
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2402
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->cardInfo(Landroid/view/View;Ljava/lang/String;)V

    .line 2403
    return-void
.end method
