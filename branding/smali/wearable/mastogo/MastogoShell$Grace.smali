.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;
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
    name = "Grace"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;)V
    .registers 3

    .prologue
    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 1452
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;->c:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 1453
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;->c:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->finish(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 1458
    return-void
.end method
