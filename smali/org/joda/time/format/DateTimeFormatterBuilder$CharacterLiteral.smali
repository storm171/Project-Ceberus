.class Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final iValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-char p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    .line 1203
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 1220
    const/4 v0, 0x1

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .line 1206
    const/4 v0, 0x1

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1224
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p3, p1, :cond_0

    .line 1225
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 1228
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1229
    iget-char p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    .line 1231
    if-eq p1, p2, :cond_1

    .line 1232
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 1233
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 1234
    if-eq p1, p2, :cond_1

    .line 1235
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 1236
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    .line 1237
    if-eq p1, p2, :cond_1

    .line 1238
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 1243
    :cond_1
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    iget-char p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1213
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    iget-char p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1217
    return-void
.end method
