.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Direct;
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
    name = "Direct"
.end annotation


# instance fields
.field final sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

.field final t:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Direct;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 358
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Direct;->t:Ljava/lang/String;

    .line 359
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Direct;->sh:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Direct;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->direct(Ljava/lang/String;)V

    .line 364
    return-void
.end method
