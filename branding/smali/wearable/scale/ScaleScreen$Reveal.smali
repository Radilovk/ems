.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reveal"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1776
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reveal()V

    .line 1781
    return-void
.end method
