.class synthetic Lorg/apache/poi/ss/formula/functions/DStarRunner$1;
.super Ljava/lang/Object;
.source "DStarRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/DStarRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 337
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->values()[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
