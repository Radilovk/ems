.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$PressLater;
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
    name = "PressLater"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V
    .registers 2

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$PressLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 328
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$PressLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pressing:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$PressLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pressSent:Z

    if-nez v0, :cond_12

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$PressLater;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->press(Z)V

    .line 335
    :cond_12
    return-void
.end method
