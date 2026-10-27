.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;
.super Ljava/lang/Object;
.source "MastogoShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModTick"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V
    .registers 3

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 781
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;->token:I

    .line 782
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;->token:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modTick(I)V

    .line 787
    return-void
.end method
