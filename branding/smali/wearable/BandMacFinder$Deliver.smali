.class final Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;
.super Ljava/lang/Object;
.source "BandMacFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandMacFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Deliver"
.end annotation


# instance fields
.field private final bands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;->cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;

    .line 182
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;->bands:Ljava/util/List;

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;->cb:Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Deliver;->bands:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;->onBands(Ljava/util/List;)V

    .line 188
    return-void
.end method
