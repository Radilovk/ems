.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Pump;
.super Ljava/lang/Object;
.source "BluetensLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pump"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)V
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Pump;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 323
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Pump;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->pump()V

    .line 328
    return-void
.end method
