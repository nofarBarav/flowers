.class public final Landroid/support/v4/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;,
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/LocaleListInterface;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    .line 171
    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    goto :goto_1c

    .line 173
    :cond_15
    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    :goto_1c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;
    .registers 2

    .line 206
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 207
    invoke-direct {v0, p0}, Landroid/support/v4/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroid/support/v4/os/LocaleListCompat;
    .registers 6

    if-eqz p0, :cond_37

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_37

    :cond_9
    const/4 v0, -0x1

    const-string v1, ","

    .line 292
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 293
    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2e

    .line 295
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_23

    aget-object v3, p0, v2

    .line 296
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    goto :goto_29

    :cond_23
    aget-object v3, p0, v2

    .line 297
    invoke-static {v3}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    :goto_29
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 299
    :cond_2e
    new-instance p0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {p0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 300
    invoke-direct {p0, v1}, Landroid/support/v4/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    return-object p0

    .line 290
    :cond_37
    :goto_37
    invoke-static {}, Landroid/support/v4/os/LocaleListCompat;->getEmptyLocaleList()Landroid/support/v4/os/LocaleListCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getAdjustedDefault()Landroid/support/v4/os/LocaleListCompat;
    .registers 3

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 312
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Landroid/support/v4/os/LocaleListCompat;
    .registers 3

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 332
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyLocaleList()Landroid/support/v4/os/LocaleListCompat;
    .registers 1

    .line 276
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;

    return-object v0
.end method

.method private setLocaleList(Landroid/os/LocaleList;)V
    .registers 6

    .line 355
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 357
    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_14

    .line 359
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 361
    :cond_14
    sget-object p1, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {p1, v1}, Landroid/support/v4/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    :cond_19
    return-void
.end method

.method private varargs setLocaleListArray([Ljava/util/Locale;)V
    .registers 3

    .line 366
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;
    .registers 3

    .line 184
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 185
    instance-of v1, p0, Landroid/os/LocaleList;

    if-eqz v1, :cond_e

    .line 186
    check-cast p0, Landroid/os/LocaleList;

    invoke-direct {v0, p0}, Landroid/support/v4/os/LocaleListCompat;->setLocaleList(Landroid/os/LocaleList;)V

    :cond_e
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 340
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3

    .line 218
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    .line 268
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 345
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3

    .line 249
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->indexOf(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 228
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 236
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    .line 257
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 350
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    .line 199
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
