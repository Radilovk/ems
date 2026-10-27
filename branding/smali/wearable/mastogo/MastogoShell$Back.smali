.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;
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
    name = "Back"
.end annotation


# instance fields
.field final seq:I

.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V
    .registers 3

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 312
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->seq:I

    .line 313
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->eventSeq:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->seq:I

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v0, :cond_2a

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CSTR=0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Back;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitBase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->direct(Ljava/lang/String;)V

    .line 320
    :cond_2a
    return-void
.end method
