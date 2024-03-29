.class public final Lorg/joda/time/field/ZeroIsMaxDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "ZeroIsMaxDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0xd58d2588e7bb132L


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 47
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped field\'s minumum value must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(JI)J
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    return-object p1
.end method

.method public get(J)I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getMaximumValue()I

    move-result p1

    .line 57
    :cond_0
    return p1
.end method

.method public getDifference(JJ)I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLeapAmount(J)I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result p1

    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .line 178
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getMinimumValue()I
    .locals 1

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 0

    .line 120
    const/4 p1, 0x1

    return p1
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 0

    .line 129
    const/4 p1, 0x1

    return p1
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 0

    .line 138
    const/4 p1, 0x1

    return p1
.end method

.method public isLeap(J)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    return p1
.end method

.method public remainder(J)J
    .locals 1

    .line 202
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundCeiling(J)J
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfCeiling(J)J
    .locals 1

    .line 194
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfEven(J)J
    .locals 1

    .line 198
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfFloor(J)J
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .locals 2

    .line 85
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getMaximumValue()I

    move-result v0

    .line 86
    const/4 v1, 0x1

    invoke-static {p0, p3, v1, v0}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 87
    if-ne p3, v0, :cond_0

    .line 88
    const/4 p3, 0x0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
