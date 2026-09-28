.class final Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;
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
    name = "Stop"
.end annotation


# instance fields
.field private final f:Lcom/isaigu/gymapp/wearable/BandMacFinder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    # invokes: Lcom/isaigu/gymapp/wearable/BandMacFinder;->deliver()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->access$400(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V

    .line 173
    return-void
.end method
