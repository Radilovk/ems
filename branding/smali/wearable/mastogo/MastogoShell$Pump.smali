.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;
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
    name = "Pump"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V
    .registers 2

    .prologue
    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 1300
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pumpPosted:Z

    .line 1305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 1306
    return-void
.end method
