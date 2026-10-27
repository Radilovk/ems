.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation


# static fields
.field public static final SWITCH_MS:I = 0x1f4


# instance fields
.field public downMs:I

.field public hi:I

.field public lo:I

.field public mode:I

.field public offMs:I

.field public onMs:I

.field public reps:I

.field public upMs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const/16 v0, 0x12

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    .line 746
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    .line 747
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    return-void
.end method

.method static decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;
    .registers 4

    .prologue
    .line 782
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;-><init>()V

    .line 783
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 784
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 785
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    .line 786
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    .line 787
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    .line 788
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    .line 789
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    .line 790
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    .line 791
    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    .line 792
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->safe()V

    .line 793
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;
    .registers 3

    .prologue
    .line 750
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;-><init>()V

    .line 751
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 752
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    .line 753
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    .line 754
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    .line 755
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    .line 756
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    .line 757
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    .line 758
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    .line 759
    return-object v0
.end method

.method public cycleMs()I
    .registers 4

    .prologue
    .line 774
    const/16 v0, 0xc8

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method encode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public safe()V
    .registers 7

    .prologue
    const v5, 0xea60

    const/16 v4, 0x2710

    const/16 v3, 0x19

    const/4 v2, 0x0

    .line 763
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 764
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    .line 765
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    .line 766
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    .line 767
    const/16 v0, 0xc8

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    .line 768
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    .line 769
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    .line 770
    const/4 v0, 0x1

    const/16 v1, 0x63

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    .line 771
    return-void
.end method
