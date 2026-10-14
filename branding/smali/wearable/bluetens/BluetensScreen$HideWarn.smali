.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HideWarn"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V
    .registers 2

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;->p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1491
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;->p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1496
    return-void
.end method
