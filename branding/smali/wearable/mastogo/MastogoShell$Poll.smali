.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;
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
    name = "Poll"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V
    .registers 2

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 1048
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-eqz v0, :cond_7

    .line 1062
    :goto_6
    return-void

    .line 1055
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v0, :cond_21

    .line 1056
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    const-string v1, "AT+CBC?"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_21

    .line 1058
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    const-string v1, "AT+CDCLK?"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 1061
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_6
.end method
