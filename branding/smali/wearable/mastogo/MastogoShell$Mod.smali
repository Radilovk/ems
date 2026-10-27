.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mod"
.end annotation


# static fields
.field public static final BEAT_GATE_MS:I = 0xc8

.field public static final MAX_STEPS:I = 0xc

.field public static final PULSE:I = 0x1

.field public static final RAMP:I = 0x2

.field public static final RANDOM:I = 0x4

.field public static final STEPS:I = 0x6

.field public static final TRIANGLE:I = 0x3

.field public static final WAVE:I = 0x0

.field public static final WORK:I = 0x5


# instance fields
.field public beatTenths:I

.field public carrier:I

.field public downMs:I

.field public duty:I

.field public every:I

.field public gate:Z

.field public hi:I

.field public lo:I

.field public offMs:I

.field public onMs:I

.field public periodMs:I

.field public rotate:[I

.field public shape:I

.field public stepMs:I

.field public final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;",
            ">;"
        }
    .end annotation
.end field

.field public upMs:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xfa0

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 841
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 843
    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 845
    const/16 v0, 0x32

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 847
    const/16 v0, 0xc8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 849
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 851
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    .line 853
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    .line 855
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 12

    .prologue
    const/16 v6, 0xa

    const/16 v10, 0xc

    const/16 v5, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1008
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    .line 1010
    :try_start_d
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1011
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 1012
    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 1013
    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 1014
    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 1015
    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 1016
    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 1017
    array-length v3, v4

    if-le v3, v6, :cond_7c

    .line 1018
    const/4 v3, 0x6

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    .line 1019
    const/4 v3, 0x7

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    .line 1020
    const/16 v3, 0x8

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    .line 1021
    const/16 v3, 0x9

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 1022
    const/16 v3, 0xa

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    .line 1024
    :cond_7c
    array-length v3, v4

    if-le v3, v5, :cond_b4

    const/16 v3, 0xb

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b4

    .line 1025
    const/16 v3, 0xb

    aget-object v3, v4, v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1026
    array-length v3, v5

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    move v3, v2

    .line 1027
    :goto_99
    array-length v6, v5

    if-ge v3, v6, :cond_b4

    .line 1028
    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    const/4 v7, 0x0

    const/16 v8, 0x19

    aget-object v9, v5, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v6, v3

    .line 1027
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 1031
    :cond_b4
    array-length v3, v4

    if-le v3, v10, :cond_dd

    const/16 v3, 0xc

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_dd

    .line 1032
    const/16 v3, 0xc

    aget-object v3, v4, v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_cd
    if-ge v3, v6, :cond_dd

    aget-object v7, v5, v3

    .line 1033
    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 1036
    :cond_dd
    array-length v3, v4

    const/16 v5, 0xd

    if-le v3, v5, :cond_f7

    .line 1037
    const/4 v3, -0x1

    const/16 v5, 0x19

    const/16 v6, 0xd

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 1039
    :cond_f7
    array-length v3, v4

    const/16 v5, 0xf

    if-le v3, v5, :cond_112

    .line 1040
    const/16 v3, 0xe

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_116

    :goto_106
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    .line 1041
    const/16 v1, 0xf

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_112} :catch_118

    .line 1046
    :cond_112
    :goto_112
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1047
    return-object v0

    :cond_116
    move v1, v2

    .line 1040
    goto :goto_106

    .line 1043
    :catch_118
    move-exception v0

    .line 1044
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    goto :goto_112
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 5

    .prologue
    .line 872
    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    .line 873
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 874
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 875
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 876
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 877
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 878
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 879
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    .line 880
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    .line 881
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    .line 882
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 883
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    .line 884
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    .line 885
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 886
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    .line 887
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 889
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 891
    :cond_63
    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x3b

    const/4 v1, 0x0

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v4, v3

    move v0, v1

    :goto_c
    if-ge v0, v4, :cond_1f

    aget v5, v3, v0

    .line 990
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 991
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    :cond_19
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 995
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 997
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3f

    .line 998
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    :cond_3f
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1002
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1004
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    if-eqz v0, :cond_10a

    const/4 v0, 0x1

    :goto_f5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    return-object v0

    :cond_10a
    move v0, v1

    .line 1004
    goto :goto_f5
.end method

.method public moduleAt(J)I
    .registers 10

    .prologue
    .line 972
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 973
    const/4 v0, -0x1

    .line 975
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    int-to-long v2, v1

    div-long v2, p1, v2

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v1, v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    aget v0, v0, v1

    goto :goto_7
.end method

.method public moduleFor(J)I
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_43

    .line 951
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepAt(J)[I

    move-result-object v3

    .line 952
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    aget v4, v3, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 953
    aget v4, v3, v5

    iget v5, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_40

    aget v1, v3, v1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    iget v5, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_40

    .line 954
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    aget v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 962
    :goto_3f
    return v0

    .line 956
    :cond_40
    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    goto :goto_3f

    .line 958
    :cond_43
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    if-ge v0, v5, :cond_73

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    if-ltz v0, :cond_73

    .line 959
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v4, v0

    rem-long v4, p1, v4

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    add-int/2addr v0, v3

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6f

    move v0, v1

    .line 960
    :goto_64
    if-nez v0, :cond_6c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_71

    :cond_6c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    goto :goto_3f

    :cond_6f
    move v0, v2

    .line 959
    goto :goto_64

    .line 960
    :cond_71
    const/4 v0, -0x1

    goto :goto_3f

    .line 962
    :cond_73
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->segmentAt(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->moduleAt(J)I

    move-result v0

    goto :goto_3f
.end method

.method public safe()V
    .registers 10

    .prologue
    const/16 v5, 0xc8

    const/16 v3, 0x19

    const/4 v4, 0x5

    const/16 v8, 0x1f4

    const/4 v0, 0x0

    .line 895
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 896
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 897
    const v1, 0x1d4c0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 898
    const/16 v1, 0x5f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 899
    const/16 v1, 0x64

    const/16 v2, 0x7d0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 900
    const/16 v1, 0x2710

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    .line 901
    const/16 v1, 0x2710

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    .line 902
    const v1, 0xea60

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    .line 903
    const v1, 0xea60

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 904
    const/4 v1, 0x1

    const/16 v2, 0x14

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    .line 905
    const/16 v1, 0x28

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    .line 906
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v1, v4, :cond_bb

    .line 907
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    add-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 909
    :cond_bb
    :goto_bb
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_d3

    .line 910
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_bb

    .line 912
    :cond_d3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 913
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_e5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 916
    const-wide/16 v4, 0x0

    move v2, v0

    .line 917
    :goto_ee
    if-ge v2, v3, :cond_120

    .line 918
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 919
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->safe()V

    .line 921
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    rem-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    iget v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    if-eq v1, v6, :cond_112

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    if-ge v1, v8, :cond_112

    .line 922
    iput v8, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    .line 924
    :cond_112
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->cycleMs()I

    move-result v1

    int-to-long v6, v1

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    add-long/2addr v4, v0

    .line 917
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ee

    .line 926
    :cond_120
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_135

    .line 927
    const-wide/16 v0, 0xc8

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 929
    :cond_135
    return-void
.end method

.method public segmentAt(J)J
    .registers 10

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->switchAt()I

    move-result v0

    .line 981
    if-gtz v0, :cond_c

    .line 982
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 984
    :goto_b
    return-wide v0

    :cond_c
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-gez v1, :cond_14

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_14
    const-wide/16 v2, 0x1

    int-to-long v0, v0

    sub-long v0, p1, v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    add-long/2addr v0, v2

    goto :goto_b
.end method

.method stepAt(J)[I
    .registers 16

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 933
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    rem-long v4, p1, v0

    move v1, v2

    .line 934
    :goto_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 935
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 936
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->cycleMs()I

    move-result v3

    int-to-long v6, v3

    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    int-to-long v8, v3

    mul-long/2addr v6, v8

    .line 937
    cmp-long v3, v4, v6

    if-gez v3, :cond_45

    .line 938
    new-array v3, v12, [I

    aput v1, v3, v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->cycleMs()I

    move-result v1

    int-to-long v6, v1

    rem-long v6, v4, v6

    long-to-int v1, v6

    aput v1, v3, v10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->cycleMs()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v4, v0

    long-to-int v0, v0

    aput v0, v3, v11

    move-object v0, v3

    .line 942
    :goto_44
    return-object v0

    .line 940
    :cond_45
    sub-long/2addr v4, v6

    .line 934
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 942
    :cond_4a
    new-array v0, v12, [I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    aput v2, v0, v10

    aput v2, v0, v11

    goto :goto_44
.end method

.method public switchAt()I
    .registers 3

    .prologue
    .line 967
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    add-int/2addr v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
