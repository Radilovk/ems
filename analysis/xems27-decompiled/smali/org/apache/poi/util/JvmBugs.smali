.class public Lorg/apache/poi/util/JvmBugs;
.super Ljava/lang/Object;
.source "JvmBugs.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lorg/apache/poi/util/JvmBugs;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/JvmBugs;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasLineBreakMeasurerBug()Z
    .locals 7

    .line 44
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "version":Ljava/lang/String;
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "os":Ljava/lang/String;
    const-string v2, "org.apache.poi.JvmBugs.LineBreakMeasurer.ignore"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 47
    .local v2, "ignore":Z
    if-nez v2, :cond_1

    const-string v3, "win"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1.6.0_45"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1.7.0_21"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 48
    .local v3, "hasBug":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 49
    sget-object v4, Lorg/apache/poi/util/JvmBugs;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    const-string v6, "JVM has LineBreakMeasurer bug - see POI bug #54904 - caller code might default to Lucida Sans"

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 51
    :cond_2
    return v3
.end method
