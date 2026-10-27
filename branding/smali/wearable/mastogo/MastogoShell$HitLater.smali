.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$HitLater;
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
    name = "HitLater"
.end annotation


# instance fields
.field final ms:I

.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V
    .registers 3

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$HitLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 290
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$HitLater;->ms:I

    .line 291
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$HitLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$HitLater;->ms:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hit(I)V

    .line 296
    return-void
.end method
