.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;
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
    name = "Timeout"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V
    .registers 3

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 908
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->token:I

    .line 909
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 913
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->token:I

    if-ne v0, v1, :cond_18

    .line 914
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->finish(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 916
    :cond_18
    return-void
.end method
