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
    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2057
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->reveal()V

    .line 2062
    return-void
.end method
