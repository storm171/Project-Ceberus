.class public Lorg/joda/time/field/StrictDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "StrictDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x2bc81d7d969bec3eL


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeField;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    .line 55
    return-void
.end method

.method public static getInstance(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;
    .locals 1

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    instance-of v0, p0, Lorg/joda/time/field/LenientDateTimeField;

    if-eqz v0, :cond_1

    .line 45
    check-cast p0, Lorg/joda/time/field/LenientDateTimeField;

    invoke-virtual {p0}, Lorg/joda/time/field/LenientDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object p0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTimeField;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    return-object p0

    .line 50
    :cond_2
    new-instance v0, Lorg/joda/time/field/StrictDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/field/StrictDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method


# virtual methods
.method public final isLenient()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public set(JI)J
    .locals 2

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/StrictDateTimeField;->getMinimumValue(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/StrictDateTimeField;->getMaximumValue(J)I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DelegatedDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
