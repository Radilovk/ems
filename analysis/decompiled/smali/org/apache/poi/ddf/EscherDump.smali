.class public final Lorg/apache/poi/ddf/EscherDump;
.super Ljava/lang/Object;
.source "EscherDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private dec1616(I)Ljava/lang/String;
    .locals 3
    .param p1, "n32"    # I

    .prologue
    .line 744
    const-string v0, ""

    .line 745
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p1, -0x1

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    return-object v0
.end method

.method private static getBlipType(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 736
    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipType(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 780
    const-string v1, "0F 00 00 F0 89 07 00 00 00 00 06 F0 18 00 00 00 05 04 00 00 02 00 00 00 05 00 00 00 01 00 00 00 01 00 00 00 05 00 00 00 4F 00 01 F0 2F 07 00 00 42 00 07 F0 B7 01 00 00 03 04 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 FF 00 93 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 8B 01 00 00 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 92 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 59 01 00 00 00 FE 78 9C E3 9B C4 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 D9 C8 58 CC E8 CF B0 80 61 3A 8A 7E 0D C6 23 AC 4F E0 E2 98 B6 12 2B 06 73 9D 12 E3 52 56 59 F6 08 8A CC 52 66 A3 50 FF 96 2B 94 E9 DF 4C A1 FE 2D 3A 03 AB 9F 81 C2 F0 A3 54 BF 0F 85 EE A7 54 FF 40 FB 7F A0 E3 9F D2 F4 4F 71 FE 19 58 FF 2B 31 7F 67 36 3B 25 4F 99 1B 4E 53 A6 5F 89 25 95 E9 C4 00 C7 83 12 F3 1F 26 35 4A D3 D2 47 0E 0A C3 41 8E C9 8A 52 37 DC 15 A1 D0 0D BC 4C 06 0C 2B 28 2C 13 28 D4 EF 43 61 5A A0 58 3F 85 71 E0 4B 69 9E 64 65 FE 39 C0 E5 22 30 1D 30 27 0E 74 3A 18 60 FD 4A CC B1 2C 13 7D 07 36 2D 2A 31 85 B2 6A 0D 74 1D 1D 22 4D 99 FE 60 0A F5 9B EC 1C 58 FD 67 06 56 3F 38 0D 84 3C A5 30 0E 28 D3 AF C4 A4 CA FA 44 7A 0D 65 6E 60 7F 4D A1 1B 24 58 F7 49 AF A5 CC 0D CC DF 19 FE 03 00 F0 B1 25 4D 42 00 07 F0 E1 01 00 00 03 04 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 FF 00 BD 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 B5 01 00 00 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 DA 03 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 83 01 00 00 00 FE 78 9C A5 52 BF 4B 42 51 14 3E F7 DC 77 7A 16 45 48 8B 3C 48 A8 16 15 0D 6C 88 D0 04 C3 40 A3 32 1C 84 96 08 21 04 A1 C5 5C A2 35 82 C0 35 6A AB 1C 6A 6B A8 24 5A 83 68 08 84 84 96 A2 86 A0 7F C2 86 5E E7 5E F5 41 E4 10 BC 03 1F E7 FB F1 CE B9 F7 F1 9E 7C 05 2E 7A 37 9B E0 45 7B 10 EC 6F 96 5F 1D 74 13 55 7E B0 6C 5D 20 60 C0 49 A2 9A BD 99 4F 50 83 1B 30 38 13 0E 33 60 A6 A7 6B B5 37 EB F4 10 FA 14 15 A0 B6 6B 37 0C 1E B3 49 73 5B A5 C2 26 48 3E C1 E0 6C 08 4A 30 C9 93 AA 02 B8 20 13 62 05 4E E1 E8 D7 7C C0 B8 14 95 5E BE B8 A7 CF 1E BE 55 2C 56 B9 78 DF 08 7E 88 4C 27 FF 7B DB FF 7A DD B7 1A 17 67 34 6A AE BA DA 35 D1 E7 72 BE FE EC 6E FE DA E5 7C 3D EC 7A DE 03 FD 50 06 0B 23 F2 0E F3 B2 A5 11 91 0D 4C B5 B5 F3 BF 94 C1 8F 24 F7 D9 6F 60 94 3B C9 9A F3 1C 6B E7 BB F0 2E 49 B2 25 2B C6 B1 EE 69 EE 15 63 4F 71 7D CE 85 CC C8 35 B9 C3 28 28 CE D0 5C 67 79 F2 4A A2 14 23 A4 38 43 73 9D 2D 69 2F C1 08 31 9F C5 5C 9B EB 7B C5 69 19 B3 B4 81 F3 DC E3 B4 8E 8B CC B3 94 53 5A E7 41 2A 63 9A AA 38 C5 3D 48 BB EC 57 59 6F 2B AD 73 1F 1D 60 92 AE 70 8C BB 8F CE 31 C1 3C 49 27 4A EB DC A4 5B 8C D1 0B 0E 73 37 E9 11 A7 99 C7 E8 41 69 B0 7F 00 96 F2 A7 E8 42 00 07 F0 B4 01 00 00 03 04 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 FF 00 90 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 88 01 00 00 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 12 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 56 01 00 00 00 FE 78 9C E3 13 62 00 02 D6 BB EC 17 19 04 99 FE F3 30 FC FF 07 E4 FE 82 62 98 0C 08 C8 31 48 FD 07 03 06 46 06 2E B8 8C 21 98 75 87 FD 02 C3 42 86 6D 0C 2C 40 39 46 38 8B 85 C1 02 AB A8 14 C4 64 B0 EC 34 06 36 10 93 91 01 64 3A 58 54 87 81 83 FD 22 AB 63 51 66 62 0E 03 33 D0 06 16 A0 1C 2F 43 26 83 1E 50 27 08 68 B0 6C 64 2C 66 F4 67 58 C0 30 1D 45 BF 06 E3 11 D6 27 70 71 4C 5B 89 15 83 B9 4E 89 71 29 AB 2C 7B 04 45 66 29 B3 51 A8 7F CB 15 CA F4 6F A6 50 FF 16 9D 81 D5 CF 40 61 F8 51 AA DF 87 42 F7 53 AA 7F A0 FD 3F D0 F1 4F 69 FA A7 38 FF 0C AC FF 95 98 BF 33 9B 9D 92 A7 CC 0D A7 29 D3 AF C4 92 CA 74 62 80 E3 41 89 F9 0F 93 1A A5 69 E9 23 07 85 E1 20 C7 64 45 A9 1B EE 8A 50 E8 06 5E 26 03 86 15 14 96 09 14 EA F7 A1 30 2D 50 AC 9F C2 38 F0 A5 34 4F B2 32 FF 1C E0 72 11 98 0E 98 13 07 38 1D 28 31 C7 B2 4C F4 1D D8 B4 A0 C4 14 CA AA 35 D0 75 64 88 34 65 FA 83 29 D4 6F B2 73 60 F5 9F A1 54 FF 0E CA D3 40 C8 53 0A E3 E0 09 85 6E 50 65 7D 22 BD 86 32 37 B0 BF A6 D0 0D 12 AC FB A4 D7 52 E6 06 E6 EF 0C FF 01 97 1D 12 C7 42 00 07 F0 C3 01 00 00 03 04 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 FF 00 9F 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 97 01 00 00 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 AE 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 65 01 00 00 00 FE 78 9C E3 5B C7 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 99 C6 B8 98 D1 9F 61 01 C3 74 14 FD 1A 8C 2B D8 84 B1 88 4B A5 A5 75 03 01 50 DF 59 46 77 46 0F A8 3C A6 AB 88 15 83 B9 5E 89 B1 8B D5 97 2D 82 22 B3 94 29 D5 BF E5 CA C0 EA DF AC 43 A1 FD 14 EA 67 A0 30 FC 28 D5 EF 43 A1 FB 7D 87 B8 FF 07 3A FE 07 3A FD 53 EA 7E 0A C3 4F 89 F9 0E 73 EA 69 79 CA DC 70 8A 32 FD 4A 2C 5E 4C DF 87 7A 3C BC E0 A5 30 1E 3E 31 C5 33 AC A0 30 2F 52 A8 DF 87 C2 30 A4 54 3F A5 65 19 85 65 A9 12 D3 2B 16 0D 8A CB 13 4A F3 E3 27 E6 09 03 9D 0E 06 58 BF 12 B3 13 CB C1 01 4E 8B 4A 4C 56 AC 91 03 5D 37 86 48 53 A6 3F 98 42 FD 26 3B 07 56 FF 99 1D 14 EA A7 CC 7E 70 1A 08 79 42 61 1C 3C A5 D0 0D 9C 6C C2 32 6B 29 73 03 DB 6B CA DC C0 F8 97 F5 AD CC 1A CA DC C0 F4 83 32 37 B0 A4 30 CE FC C7 48 99 1B FE 33 32 FC 07 00 6C CC 2E 23 33 00 0B F0 12 00 00 00 BF 00 08 00 08 00 81 01 09 00 00 08 C0 01 40 00 00 08 40 00 1E F1 10 00 00 00 0D 00 00 08 0C 00 00 08 17 00 00 08 F7 00 00 10                                              "

    .line 905
    .local v1, "dump":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 907
    .local v0, "bytes":[B
    new-instance v2, Lorg/apache/poi/ddf/EscherDump;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherDump;-><init>()V

    .line 910
    .local v2, "dumper":Lorg/apache/poi/ddf/EscherDump;
    const/4 v3, 0x0

    array-length v4, v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    .line 912
    return-void
.end method

.method private outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "bytes"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .prologue
    .line 760
    packed-switch p1, :pswitch_data_0

    .line 772
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to output variable of that width"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :pswitch_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 774
    :goto_0
    return-void

    .line 766
    :pswitch_2
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :pswitch_3
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private propName(S)Ljava/lang/String;
    .locals 10
    .param p1, "propertyId"    # S

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x79

    const/16 v7, 0x78

    const/16 v6, 0x77

    const/4 v5, 0x4

    .line 443
    const/16 v2, 0x112

    new-array v1, v2, [Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const-string/jumbo v4, "transform.rotation"

    invoke-direct {v3, p0, v5, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const-string v4, "protection.lockrotation"

    invoke-direct {v3, p0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const-string v4, "protection.lockaspectratio"

    invoke-direct {v3, p0, v7, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const-string v4, "protection.lockposition"

    invoke-direct {v3, p0, v8, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const-string v3, "protection.lockagainstselect"

    invoke-direct {v2, p0, v9, v3}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x7b

    const-string v5, "protection.lockcropping"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x7c

    const-string v5, "protection.lockvertices"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x7d

    const-string v5, "protection.locktext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x7e

    const-string v5, "protection.lockadjusthandles"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x7f

    const-string v5, "protection.lockagainstgrouping"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x80

    const-string v5, "text.textid"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x81

    const-string v5, "text.textleft"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x82

    const-string v5, "text.texttop"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x83

    const-string v5, "text.textright"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x84

    const-string v5, "text.textbottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x85

    const-string v5, "text.wraptext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x86

    const-string v5, "text.scaletext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x87

    const-string v5, "text.anchortext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x88

    const-string v5, "text.textflow"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x89

    const-string v5, "text.fontrotation"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x8a

    const-string v5, "text.idofnextshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x8b

    const-string v5, "text.bidir"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xbb

    const-string v5, "text.singleclickselects"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xbc

    const-string v5, "text.usehostmargins"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xbd

    const-string v5, "text.rotatetextwithshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xbe

    const-string v5, "text.sizeshapetofittext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xbf

    const-string v5, "text.sizetexttofitshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc0

    const-string v5, "geotext.unicode"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc1

    const-string v5, "geotext.rtftext"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc2

    const-string v5, "geotext.alignmentoncurve"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc3

    const-string v5, "geotext.defaultpointsize"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc4

    const-string v5, "geotext.textspacing"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xc5

    const-string v5, "geotext.fontfamilyname"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf0

    const-string v5, "geotext.reverseroworder"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf1

    const-string v5, "geotext.hastexteffect"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf2

    const-string v5, "geotext.rotatecharacters"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf3

    const-string v5, "geotext.kerncharacters"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf4

    const-string v5, "geotext.tightortrack"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf5

    const-string v5, "geotext.stretchtofitshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf6

    const-string v5, "geotext.charboundingbox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf7

    const-string v5, "geotext.scaletextonpath"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf8

    const-string v5, "geotext.stretchcharheight"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xf9

    const-string v5, "geotext.nomeasurealongpath"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xfa

    const-string v5, "geotext.boldfont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xfb

    const-string v5, "geotext.italicfont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xfc

    const-string v5, "geotext.underlinefont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xfd

    const-string v5, "geotext.shadowfont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xfe

    const-string v5, "geotext.smallcapsfont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0xff

    const-string v5, "geotext.strikethroughfont"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x100

    const-string v5, "blip.cropfromtop"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x101

    const-string v5, "blip.cropfrombottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x102

    const-string v5, "blip.cropfromleft"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x103

    const-string v5, "blip.cropfromright"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x104

    const-string v5, "blip.bliptodisplay"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x105

    const-string v5, "blip.blipfilename"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x106

    const-string v5, "blip.blipflags"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x107

    const-string v5, "blip.transparentcolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x108

    const-string v5, "blip.contrastsetting"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x109

    const-string v5, "blip.brightnesssetting"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10a

    const-string v5, "blip.gamma"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10b

    const-string v5, "blip.pictureid"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10c

    const-string v5, "blip.doublemod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10d

    const-string v5, "blip.picturefillmod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10e

    const-string v5, "blip.pictureline"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x10f

    const-string v5, "blip.printblip"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x110

    const-string v5, "blip.printblipfilename"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x111

    const-string v5, "blip.printflags"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x13c

    const-string v5, "blip.nohittestpicture"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x13d

    const-string v5, "blip.picturegray"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x13e

    const-string v5, "blip.picturebilevel"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x13f

    const-string v5, "blip.pictureactive"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x140

    const-string v5, "geometry.left"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x141

    const-string v5, "geometry.top"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x142

    const-string v5, "geometry.right"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x143

    const-string v5, "geometry.bottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x144

    const-string v5, "geometry.shapepath"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x145

    const-string v5, "geometry.vertices"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x146

    const-string v5, "geometry.segmentinfo"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x147

    const-string v5, "geometry.adjustvalue"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x148

    const-string v5, "geometry.adjust2value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x50

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x149

    const-string v5, "geometry.adjust3value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x51

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14a

    const-string v5, "geometry.adjust4value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x52

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14b

    const-string v5, "geometry.adjust5value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x53

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14c

    const-string v5, "geometry.adjust6value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x54

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14d

    const-string v5, "geometry.adjust7value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x55

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14e

    const-string v5, "geometry.adjust8value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x56

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x14f

    const-string v5, "geometry.adjust9value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x57

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x150

    const-string v5, "geometry.adjust10value"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x58

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17a

    const-string v5, "geometry.shadowOK"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x59

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17b

    const-string v5, "geometry.3dok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17c

    const-string v5, "geometry.lineok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17d

    const-string v5, "geometry.geotextok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17e

    const-string v5, "geometry.fillshadeshapeok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x17f

    const-string v5, "geometry.fillok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x180

    const-string v5, "fill.filltype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x181

    const-string v5, "fill.fillcolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x60

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x182

    const-string v5, "fill.fillopacity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x61

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x183

    const-string v5, "fill.fillbackcolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x62

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x184

    const-string v5, "fill.backopacity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x63

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x185

    const-string v5, "fill.crmod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x64

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x186

    const-string v5, "fill.patterntexture"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x65

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x187

    const-string v5, "fill.blipfilename"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x66

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x188

    const-string v5, "fill.blipflags"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x67

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x189

    const-string v5, "fill.width"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x68

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18a

    const-string v5, "fill.height"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x69

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18b

    const-string v5, "fill.angle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18c

    const-string v5, "fill.focus"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18d

    const-string v5, "fill.toleft"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18e

    const-string v5, "fill.totop"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x18f

    const-string v5, "fill.toright"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x190

    const-string v5, "fill.tobottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x191

    const-string v5, "fill.rectleft"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x70

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x192

    const-string v5, "fill.recttop"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x71

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x193

    const-string v5, "fill.rectright"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x72

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x194

    const-string v5, "fill.rectbottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x73

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x195

    const-string v5, "fill.dztype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x74

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x196

    const-string v5, "fill.shadepreset"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x75

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x197

    const-string v5, "fill.shadecolors"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x76

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x198

    const-string v5, "fill.originx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x199

    const-string v4, "fill.originy"

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x19a

    const-string v4, "fill.shapeoriginx"

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x19b

    const-string v4, "fill.shapeoriginy"

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x19c

    const-string v4, "fill.shadetype"

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v9

    const/16 v2, 0x7b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1bb

    const-string v5, "fill.filled"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1bc

    const-string v5, "fill.hittestfill"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1bd

    const-string v5, "fill.shape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1be

    const-string v5, "fill.userect"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1bf

    const-string v5, "fill.nofillhittest"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x80

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c0

    const-string v5, "linestyle.color"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x81

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c1

    const-string v5, "linestyle.opacity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x82

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c2

    const-string v5, "linestyle.backcolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x83

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c3

    const-string v5, "linestyle.crmod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x84

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c4

    const-string v5, "linestyle.linetype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x85

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c5

    const-string v5, "linestyle.fillblip"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x86

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c6

    const-string v5, "linestyle.fillblipname"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x87

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c7

    const-string v5, "linestyle.fillblipflags"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x88

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c8

    const-string v5, "linestyle.fillwidth"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x89

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1c9

    const-string v5, "linestyle.fillheight"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1ca

    const-string v5, "linestyle.filldztype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1cb

    const-string v5, "linestyle.linewidth"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1cc

    const-string v5, "linestyle.linemiterlimit"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1cd

    const-string v5, "linestyle.linestyle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1ce

    const-string v5, "linestyle.linedashing"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1cf

    const-string v5, "linestyle.linedashstyle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x90

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d0

    const-string v5, "linestyle.linestartarrowhead"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x91

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d1

    const-string v5, "linestyle.lineendarrowhead"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x92

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d2

    const-string v5, "linestyle.linestartarrowwidth"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x93

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d3

    const-string v5, "linestyle.lineestartarrowlength"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x94

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d4

    const-string v5, "linestyle.lineendarrowwidth"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x95

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d5

    const-string v5, "linestyle.lineendarrowlength"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x96

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d6

    const-string v5, "linestyle.linejoinstyle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x97

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1d7

    const-string v5, "linestyle.lineendcapstyle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x98

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1fb

    const-string v5, "linestyle.arrowheadsok"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x99

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1fc

    const-string v5, "linestyle.anyline"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1fd

    const-string v5, "linestyle.hitlinetest"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1fe

    const-string v5, "linestyle.linefillshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1ff

    const-string v5, "linestyle.nolinedrawdash"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x200

    const-string v5, "shadowstyle.type"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x201

    const-string v5, "shadowstyle.color"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x202

    const-string v5, "shadowstyle.highlight"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x203

    const-string v5, "shadowstyle.crmod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x204

    const-string v5, "shadowstyle.opacity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x205

    const-string v5, "shadowstyle.offsetx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x206

    const-string v5, "shadowstyle.offsety"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x207

    const-string v5, "shadowstyle.secondoffsetx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x208

    const-string v5, "shadowstyle.secondoffsety"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x209

    const-string v5, "shadowstyle.scalextox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20a

    const-string v5, "shadowstyle.scaleytox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20b

    const-string v5, "shadowstyle.scalextoy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20c

    const-string v5, "shadowstyle.scaleytoy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20d

    const-string v5, "shadowstyle.perspectivex"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xab

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20e

    const-string v5, "shadowstyle.perspectivey"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xac

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x20f

    const-string v5, "shadowstyle.weight"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xad

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x210

    const-string v5, "shadowstyle.originx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xae

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x211

    const-string v5, "shadowstyle.originy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x23e

    const-string v5, "shadowstyle.shadow"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x23f

    const-string v5, "shadowstyle.shadowobsured"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x240

    const-string v5, "perspective.type"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x241

    const-string v5, "perspective.offsetx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x242

    const-string v5, "perspective.offsety"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x243

    const-string v5, "perspective.scalextox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x244

    const-string v5, "perspective.scaleytox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x245

    const-string v5, "perspective.scalextoy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x246

    const-string v5, "perspective.scaleytox"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x247

    const-string v5, "perspective.perspectivex"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x248

    const-string v5, "perspective.perspectivey"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xba

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x249

    const-string v5, "perspective.weight"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xbb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x24a

    const-string v5, "perspective.originx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xbc

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x24b

    const-string v5, "perspective.originy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xbd

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x27f

    const-string v5, "perspective.perspectiveon"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x280

    const-string v5, "3d.specularamount"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xbf

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x295

    const-string v5, "3d.diffuseamount"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x296

    const-string v5, "3d.shininess"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x297

    const-string v5, "3d.edgethickness"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x298

    const-string v5, "3d.extrudeforward"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x299

    const-string v5, "3d.extrudebackward"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x29a

    const-string v5, "3d.extrudeplane"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x29b

    const-string v5, "3d.extrusioncolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x288

    const-string v5, "3d.crmod"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2bc

    const-string v5, "3d.3deffect"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2bd

    const-string v5, "3d.metallic"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2be

    const-string v5, "3d.useextrusioncolor"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xca

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2bf

    const-string v5, "3d.lightface"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xcb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c0

    const-string v5, "3dstyle.yrotationangle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xcc

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c1

    const-string v5, "3dstyle.xrotationangle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xcd

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c2

    const-string v5, "3dstyle.rotationaxisx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xce

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c3

    const-string v5, "3dstyle.rotationaxisy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xcf

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c4

    const-string v5, "3dstyle.rotationaxisz"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c5

    const-string v5, "3dstyle.rotationangle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c6

    const-string v5, "3dstyle.rotationcenterx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c7

    const-string v5, "3dstyle.rotationcentery"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c8

    const-string v5, "3dstyle.rotationcenterz"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2c9

    const-string v5, "3dstyle.rendermode"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2ca

    const-string v5, "3dstyle.tolerance"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2cb

    const-string v5, "3dstyle.xviewpoint"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2cc

    const-string v5, "3dstyle.yviewpoint"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2cd

    const-string v5, "3dstyle.zviewpoint"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2ce

    const-string v5, "3dstyle.originx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xda

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2cf

    const-string v5, "3dstyle.originy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xdb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d0

    const-string v5, "3dstyle.skewangle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xdc

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d1

    const-string v5, "3dstyle.skewamount"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xdd

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d2

    const-string v5, "3dstyle.ambientintensity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xde

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d3

    const-string v5, "3dstyle.keyx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xdf

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d4

    const-string v5, "3dstyle.keyy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d5

    const-string v5, "3dstyle.keyz"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d6

    const-string v5, "3dstyle.keyintensity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d7

    const-string v5, "3dstyle.fillx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d8

    const-string v5, "3dstyle.filly"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2d9

    const-string v5, "3dstyle.fillz"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2da

    const-string v5, "3dstyle.fillintensity"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2fb

    const-string v5, "3dstyle.constrainrotation"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2fc

    const-string v5, "3dstyle.rotationcenterauto"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2fd

    const-string v5, "3dstyle.parallel"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2fe

    const-string v5, "3dstyle.keyharsh"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xea

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x2ff

    const-string v5, "3dstyle.fillharsh"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xeb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x301

    const-string v5, "shape.master"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xec

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x303

    const-string v5, "shape.connectorstyle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xed

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x304

    const-string v5, "shape.blackandwhitesettings"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xee

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x305

    const-string v5, "shape.wmodepurebw"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xef

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x306

    const-string v5, "shape.wmodebw"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf0

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x33a

    const-string v5, "shape.oleicon"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf1

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x33b

    const-string v5, "shape.preferrelativeresize"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf2

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x33c

    const-string v5, "shape.lockshapetype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf3

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x33e

    const-string v5, "shape.deleteattachedobject"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf4

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x33f

    const-string v5, "shape.backgroundshape"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf5

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x340

    const-string v5, "callout.callouttype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf6

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x341

    const-string v5, "callout.xycalloutgap"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf7

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x342

    const-string v5, "callout.calloutangle"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf8

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x343

    const-string v5, "callout.calloutdroptype"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf9

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x344

    const-string v5, "callout.calloutdropspecified"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xfa

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x345

    const-string v5, "callout.calloutlengthspecified"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xfb

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x379

    const-string v5, "callout.iscallout"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xfc

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37a

    const-string v5, "callout.calloutaccentbar"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xfd

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37b

    const-string v5, "callout.callouttextborder"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xfe

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37c

    const-string v5, "callout.calloutminusx"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xff

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37d

    const-string v5, "callout.calloutminusy"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x100

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37e

    const-string v5, "callout.dropauto"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x101

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x37f

    const-string v5, "callout.lengthspecified"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x102

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x380

    const-string v5, "groupshape.shapename"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x103

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x381

    const-string v5, "groupshape.description"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x104

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x382

    const-string v5, "groupshape.hyperlink"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x105

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x383

    const-string v5, "groupshape.wrappolygonvertices"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x106

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x384

    const-string v5, "groupshape.wrapdistleft"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x107

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x385

    const-string v5, "groupshape.wrapdisttop"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x108

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x386

    const-string v5, "groupshape.wrapdistright"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x109

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x387

    const-string v5, "groupshape.wrapdistbottom"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10a

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x388

    const-string v5, "groupshape.regroupid"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10b

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3b9

    const-string v5, "groupshape.editedwrap"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10c

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3ba

    const-string v5, "groupshape.behinddocument"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10d

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3bb

    const-string v5, "groupshape.ondblclicknotify"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10e

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3bc

    const-string v5, "groupshape.isbutton"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10f

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3bd

    const-string v5, "groupshape.1dadjustment"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x110

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3be

    const-string v5, "groupshape.hidden"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x111

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x3bf

    const-string v5, "groupshape.print"

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v3, v1, v2

    .line 720
    .local v1, "props":[Lorg/apache/poi/ddf/EscherDump$1PropName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 721
    aget-object v2, v1, v0

    iget v2, v2, Lorg/apache/poi/ddf/EscherDump$1PropName;->_id:I

    if-ne v2, p1, :cond_0

    .line 722
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/poi/ddf/EscherDump$1PropName;->_name:Ljava/lang/String;

    .line 726
    :goto_1
    return-object v2

    .line 720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_1
    const-string/jumbo v2, "unknown property"

    goto :goto_1
.end method


# virtual methods
.method public dump(I[BLjava/io/PrintStream;)V
    .locals 1
    .param p1, "recordSize"    # I
    .param p2, "data"    # [B
    .param p3, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 915
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    .line 916
    return-void
.end method

.method public dump([BIILjava/io/PrintStream;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 52
    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    .line 53
    .local v3, "recordFactory":Lorg/apache/poi/ddf/EscherRecordFactory;
    move v1, p2

    .line 54
    .local v1, "pos":I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_0

    .line 56
    invoke-interface {v3, p1, v1}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    .line 57
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2, p1, v1, v3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v0

    .line 58
    .local v0, "bytesRead":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    add-int/2addr v1, v0

    .line 60
    goto :goto_0

    .line 61
    .end local v0    # "bytesRead":I
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    return-void
.end method

.method public dumpOld(JLjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 29
    .param p1, "maxLength"    # J
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .prologue
    .line 72
    move-wide/from16 v22, p1

    .line 76
    .local v22, "remainingBytes":J
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v21, "stringBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 82
    .local v4, "atEOF":Z
    :cond_0
    :goto_0
    if-nez v4, :cond_15

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-lez v24, :cond_15

    .line 83
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "stringBuf":Ljava/lang/StringBuffer;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .restart local v21    # "stringBuf":Ljava/lang/StringBuffer;
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v15

    .line 85
    .local v15, "options":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v19

    .line 86
    .local v19, "recordId":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v18

    .line 88
    .local v18, "recordBytesRemaining":I
    const-wide/16 v24, 0x8

    sub-long v22, v22, v24

    .line 90
    sparse-switch v19, :sswitch_data_0

    .line 189
    const/16 v24, -0xfe8

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    const/16 v24, -0xee9

    move/from16 v0, v19

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    .line 190
    const-string v20, "MsofbtBLIP"

    .line 197
    .local v20, "recordName":Ljava/lang/String;
    :goto_1
    const-string v24, "  "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static/range {v19 .. v19}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v24, "  "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, " ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-static {v15}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/16 v24, 0x2c

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-static/range {v18 .. v18}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v24, "]  instance: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    shr-int/lit8 v24, v15, 0x4

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    const/16 v24, -0xff9

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const-wide/16 v24, 0x24

    cmp-long v24, v24, v22

    if-gtz v24, :cond_4

    const/16 v24, 0x24

    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    .line 216
    new-instance v21, Ljava/lang/StringBuffer;

    .end local v21    # "stringBuf":Ljava/lang/StringBuffer;
    const-string v24, "    btWin32: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v21    # "stringBuf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v12, v0

    .line 218
    .local v12, "n8":B
    invoke-static {v12}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-static {v12}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v24, "  btMacOS: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v12, v0

    .line 222
    invoke-static {v12}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-static {v12}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    const-string v24, "    rgbUid:"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    const/16 v24, 0x0

    const/16 v25, 0x10

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 229
    const-string v24, "    tag: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 232
    const-string v24, "    size: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 234
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 235
    const-string v24, "    cRef: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 236
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 237
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 238
    const-string v24, "    offs: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 240
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 241
    const-string v24, "    usage: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 242
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 243
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 244
    const-string v24, "    cbName: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 245
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 246
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 247
    const-string v24, "    unused2: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 249
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 250
    const-string v24, "    unused3: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 252
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 255
    const-wide/16 v24, 0x24

    sub-long v22, v22, v24

    .line 257
    const/16 v18, 0x0

    .line 401
    .end local v12    # "n8":B
    :cond_1
    :goto_2
    and-int/lit8 v24, v15, 0xf

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const/4 v9, 0x1

    .line 402
    .local v9, "isContainer":Z
    :goto_3
    if-eqz v9, :cond_12

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-ltz v24, :cond_12

    .line 404
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    .line 405
    const-string v24, "            completed within"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v9    # "isContainer":Z
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_0
    const-string v20, "MsofbtDggContainer"

    .line 94
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 96
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1
    const-string v20, "MsofbtDgg"

    .line 97
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 99
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_2
    const-string v20, "MsofbtCLSID"

    .line 100
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 102
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_3
    const-string v20, "MsofbtOPT"

    .line 103
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 105
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_4
    const-string v20, "MsofbtColorMRU"

    .line 106
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 108
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_5
    const-string v20, "MsofbtSplitMenuColors"

    .line 109
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 111
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_6
    const-string v20, "MsofbtBstoreContainer"

    .line 112
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 114
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_7
    const-string v20, "MsofbtBSE"

    .line 115
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 117
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_8
    const-string v20, "MsofbtDgContainer"

    .line 118
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 120
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_9
    const-string v20, "MsofbtDg"

    .line 121
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 123
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_a
    const-string v20, "MsofbtRegroupItem"

    .line 124
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 126
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_b
    const-string v20, "MsofbtColorScheme"

    .line 127
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 129
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_c
    const-string v20, "MsofbtSpgrContainer"

    .line 130
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 132
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_d
    const-string v20, "MsofbtSpContainer"

    .line 133
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 135
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_e
    const-string v20, "MsofbtSpgr"

    .line 136
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 138
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_f
    const-string v20, "MsofbtSp"

    .line 139
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 141
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_10
    const-string v20, "MsofbtTextbox"

    .line 142
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 144
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_11
    const-string v20, "MsofbtClientTextbox"

    .line 145
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 147
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_12
    const-string v20, "MsofbtAnchor"

    .line 148
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 150
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_13
    const-string v20, "MsofbtChildAnchor"

    .line 151
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 153
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_14
    const-string v20, "MsofbtClientAnchor"

    .line 154
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 156
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_15
    const-string v20, "MsofbtClientData"

    .line 157
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 159
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_16
    const-string v20, "MsofbtOleObject"

    .line 160
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 162
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_17
    const-string v20, "MsofbtDeletedPspl"

    .line 163
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 165
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_18
    const-string v20, "MsofbtSolverContainer"

    .line 166
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 168
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_19
    const-string v20, "MsofbtConnectorRule"

    .line 169
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 171
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1a
    const-string v20, "MsofbtAlignRule"

    .line 172
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 174
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1b
    const-string v20, "MsofbtArcRule"

    .line 175
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 177
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1c
    const-string v20, "MsofbtClientRule"

    .line 178
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 180
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1d
    const-string v20, "MsofbtCalloutRule"

    .line 181
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 183
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1e
    const-string v20, "MsofbtSelection"

    .line 184
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 186
    .end local v20    # "recordName":Ljava/lang/String;
    :sswitch_1f
    const-string v20, "MsofbtUDefProp"

    .line 187
    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 191
    .end local v20    # "recordName":Ljava/lang/String;
    :cond_2
    and-int/lit8 v24, v15, 0xf

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 192
    const-string v20, "UNKNOWN container"

    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 194
    .end local v20    # "recordName":Ljava/lang/String;
    :cond_3
    const-string v20, "UNKNOWN ID"

    .restart local v20    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 259
    :cond_4
    const/16 v24, -0xff0

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const-wide/16 v24, 0x12

    cmp-long v24, v24, v22

    if-gtz v24, :cond_5

    const/16 v24, 0x12

    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    .line 264
    const-string v24, "    Flag: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 265
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 266
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 267
    const-string v24, "    Col1: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 269
    const-string v24, "    dX1: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 271
    const-string v24, "    Row1: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 273
    const-string v24, "    dY1: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 275
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 276
    const-string v24, "    Col2: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 278
    const-string v24, "    dX2: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 280
    const-string v24, "    Row2: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 282
    const-string v24, "    dY2: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 284
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 286
    const-wide/16 v24, 0x12

    sub-long v22, v22, v24

    .line 287
    add-int/lit8 v18, v18, -0x12

    goto/16 :goto_2

    .line 290
    :cond_5
    const/16 v24, -0xff5

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, -0xede

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 292
    :cond_6
    const/4 v13, 0x0

    .line 293
    .local v13, "nComplex":I
    const-string v24, "    PROPID        VALUE"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    :goto_4
    add-int/lit8 v24, v13, 0x6

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    add-int/lit8 v24, v13, 0x6

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v22, v24

    if-ltz v24, :cond_a

    .line 298
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v10

    .line 299
    .local v10, "n16":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v11

    .line 301
    .local v11, "n32":I
    add-int/lit8 v18, v18, -0x6

    .line 302
    const-wide/16 v24, 0x6

    sub-long v22, v22, v24

    .line 303
    const-string v24, "    "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    invoke-static {v10}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    const-string v24, " ("

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    and-int/lit16 v0, v10, 0x3fff

    move/from16 v16, v0

    .line 307
    .local v16, "propertyId":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 308
    and-int/lit16 v0, v10, -0x8000

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 310
    and-int/lit16 v0, v10, 0x4000

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 311
    const-string v24, ", fBlipID"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    :cond_7
    const-string v24, ")  "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 314
    invoke-static {v11}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 316
    and-int/lit16 v0, v10, 0x4000

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 318
    const-string v24, " ("

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/poi/ddf/EscherDump;->dec1616(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 320
    const/16 v24, 0x29

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 321
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " {"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "}"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 323
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_4

    .line 327
    :cond_9
    const-string v24, ", fComplex)  "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 328
    invoke-static {v11}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 329
    const-string v24, " - Complex prop len"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 330
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " {"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "}"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    add-int/2addr v13, v11

    goto/16 :goto_4

    .line 337
    .end local v10    # "n16":S
    .end local v11    # "n32":I
    .end local v16    # "propertyId":I
    :cond_a
    :goto_5
    int-to-long v0, v13

    move-wide/from16 v24, v0

    and-long v24, v24, v22

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_1

    .line 339
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v13, v0, :cond_b

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-short v14, v0

    .line 340
    .local v14, "nDumpSize":S
    :goto_6
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v14}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 341
    sub-int/2addr v13, v14

    .line 342
    sub-int v18, v18, v14

    .line 343
    int-to-long v0, v14

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    goto :goto_5

    .line 339
    .end local v14    # "nDumpSize":S
    :cond_b
    int-to-short v14, v13

    goto :goto_6

    .line 346
    .end local v13    # "nComplex":I
    :cond_c
    const/16 v24, -0xfee

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 348
    const-string v24, "    Connector rule: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 349
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 350
    const-string v24, "    ShapeID A: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 351
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 352
    const-string v24, "   ShapeID B: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 353
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 354
    const-string v24, "    ShapeID connector: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 355
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 356
    const-string v24, "   Connect pt A: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 357
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 358
    const-string v24, "   Connect pt B: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 359
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v24

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 361
    add-int/lit8 v18, v18, -0x18

    .line 362
    const-wide/16 v24, 0x18

    sub-long v22, v22, v24

    goto/16 :goto_2

    .line 364
    :cond_d
    const/16 v24, -0xfe8

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    const/16 v24, -0xee9

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 366
    const-string v24, "    Secondary UID: "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    const/16 v24, 0x0

    const/16 v25, 0x10

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 368
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Cache of size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Boundary top: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Boundary left: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Boundary width: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Boundary height: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    X: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Y: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Cache of saved size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Compression Flag: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "    Filter: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    const-string v24, "    Data (after decompression): "

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    add-int/lit8 v18, v18, -0x32

    .line 381
    const-wide/16 v24, 0x32

    sub-long v22, v22, v24

    .line 383
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-short v14, v0

    .line 386
    .restart local v14    # "nDumpSize":S
    :goto_7
    new-array v6, v14, [B

    .line 387
    .local v6, "buf":[B
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 388
    .local v17, "read":I
    :goto_8
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move/from16 v0, v17

    if-ge v0, v14, :cond_f

    .line 389
    array-length v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    add-int v17, v17, v24

    goto :goto_8

    .line 383
    .end local v6    # "buf":[B
    .end local v14    # "nDumpSize":S
    .end local v17    # "read":I
    :cond_e
    move/from16 v0, v18

    int-to-short v14, v0

    goto :goto_7

    .line 390
    .restart local v6    # "buf":[B
    .restart local v14    # "nDumpSize":S
    .restart local v17    # "read":I
    :cond_f
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    .local v5, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 393
    .local v8, "in1":Ljava/io/InputStream;
    const/4 v7, -0x1

    .line 394
    .local v7, "bytesToDump":I
    const/16 v24, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-static {v8, v0, v1, v7}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 396
    sub-int v18, v18, v14

    .line 397
    int-to-long v0, v14

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    goto/16 :goto_2

    .line 401
    .end local v5    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "buf":[B
    .end local v7    # "bytesToDump":I
    .end local v8    # "in1":Ljava/io/InputStream;
    .end local v14    # "nDumpSize":S
    .end local v17    # "read":I
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 407
    .restart local v9    # "isContainer":Z
    :cond_11
    const-string v24, "            continued elsewhere"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :cond_12
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-ltz v24, :cond_14

    .line 412
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-short v14, v0

    .line 414
    .restart local v14    # "nDumpSize":S
    :goto_9
    if-eqz v14, :cond_0

    .line 416
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v14}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 417
    int-to-long v0, v14

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    goto/16 :goto_0

    .line 412
    .end local v14    # "nDumpSize":S
    :cond_13
    move/from16 v0, v18

    int-to-short v14, v0

    goto :goto_9

    .line 421
    :cond_14
    const-string v24, " >> OVERRUN <<"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v9    # "isContainer":Z
    .end local v15    # "options":S
    .end local v18    # "recordBytesRemaining":I
    .end local v19    # "recordId":S
    .end local v20    # "recordName":Ljava/lang/String;
    :cond_15
    return-void

    .line 90
    :sswitch_data_0
    .sparse-switch
        -0x1000 -> :sswitch_0
        -0xfff -> :sswitch_6
        -0xffe -> :sswitch_8
        -0xffd -> :sswitch_c
        -0xffc -> :sswitch_d
        -0xffb -> :sswitch_18
        -0xffa -> :sswitch_1
        -0xff9 -> :sswitch_7
        -0xff8 -> :sswitch_9
        -0xff7 -> :sswitch_e
        -0xff6 -> :sswitch_f
        -0xff5 -> :sswitch_3
        -0xff4 -> :sswitch_10
        -0xff3 -> :sswitch_11
        -0xff2 -> :sswitch_12
        -0xff1 -> :sswitch_13
        -0xff0 -> :sswitch_14
        -0xfef -> :sswitch_15
        -0xfee -> :sswitch_19
        -0xfed -> :sswitch_1a
        -0xfec -> :sswitch_1b
        -0xfeb -> :sswitch_1c
        -0xfea -> :sswitch_2
        -0xfe9 -> :sswitch_1d
        -0xee8 -> :sswitch_a
        -0xee7 -> :sswitch_1e
        -0xee6 -> :sswitch_4
        -0xee3 -> :sswitch_17
        -0xee2 -> :sswitch_5
        -0xee1 -> :sswitch_16
        -0xee0 -> :sswitch_b
        -0xede -> :sswitch_1f
    .end sparse-switch
.end method
