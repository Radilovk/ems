.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;
.source "ArchUtils.java"


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/arch/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 39
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "processor"    # Lorg/apache/commons/lang3/arch/Processor;

    .prologue
    .line 89
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists in processor map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method private static varargs addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .locals 3
    .param p0, "processor"    # Lorg/apache/commons/lang3/arch/Processor;
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 103
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 104
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/ArchUtils;->addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getProcessor()Lorg/apache/commons/lang3/arch/Processor;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArchUtils;->getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/arch/Processor;

    return-object v0
.end method

.method private static init()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_32Bit()V

    .line 44
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_64Bit()V

    .line 45
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_32Bit()V

    .line 46
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_64Bit()V

    .line 47
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_32Bit()V

    .line 48
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_64Bit()V

    .line 49
    return-void
.end method

.method private static init_IA64_32Bit()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 63
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ia64_32"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ia64n"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private static init_IA64_64Bit()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 68
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ia64"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ia64w"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static init_PPC_32Bit()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 73
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ppc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "power"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "powerpc"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "power_pc"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "power_rs"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static init_PPC_64Bit()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 78
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ppc64"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "power64"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "powerpc64"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "power_pc64"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "power_rs64"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static init_X86_32Bit()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 53
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "x86"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "i386"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i486"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "i586"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "i686"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pentium"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static init_X86_64Bit()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 58
    .local v0, "processor":Lorg/apache/commons/lang3/arch/Processor;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "x86_64"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "amd64"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "em64t"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "universal"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 59
    return-void
.end method
