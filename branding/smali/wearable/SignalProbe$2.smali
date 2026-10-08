.class Lcom/isaigu/gymapp/wearable/SignalProbe$2;
.super Ljava/lang/Object;
.source "SignalProbe.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/SignalProbe;->listen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$getInt:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$2;->val$getInt:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 174
    :try_start_1
    const-string v0, "handleEvent"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p3, :cond_35

    array-length v0, p3

    if-ne v0, v2, :cond_35

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SignalProbe$2;->val$getInt:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "rssi"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$302(I)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_37

    .line 180
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0

    .line 177
    :catch_37
    move-exception v0

    goto :goto_35
.end method
