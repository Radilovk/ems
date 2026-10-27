.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;
.super Ljava/lang/Object;
.source "MastogoLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pump"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V
    .registers 2

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Pump;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->pump()V

    .line 335
    return-void
.end method
