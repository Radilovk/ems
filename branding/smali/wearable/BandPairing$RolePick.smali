.class final Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RolePick"
.end annotation


# instance fields
.field private final bandApp:Z

.field private final key:Ljava/lang/String;

.field private final mac:Ljava/lang/String;

.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 610
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->mac:Ljava/lang/String;

    .line 611
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->key:Ljava/lang/String;

    .line 612
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->bandApp:Z

    .line 613
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 6

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->key:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$RolePick;->bandApp:Z

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->pickRole(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$800(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 622
    :goto_b
    return-void

    .line 619
    :catch_c
    move-exception v0

    .line 620
    const-string v1, "BandPairing.role"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method
