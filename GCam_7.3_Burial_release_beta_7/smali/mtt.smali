.class final Lmtt;
.super Ljava/lang/Object;

# interfaces
.implements Lmts;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final c(Lmtm;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.libraries.lens.lenslite.dynamicloading.PackageVersion"

    invoke-virtual {p0, v0}, Lmtm;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Lmto; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "com.google.android.libraries.lens.lenslite.dynamicloading.ApiVersion"

    invoke-virtual {p0, v0}, Lmtm;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lmtm;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Lmtt;->c(Lmtm;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "CURRENT_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, v0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lmto;

    const-string v1, "Failed to read host package version"

    invoke-direct {v0, v1, p1}, Lmto;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lmtm;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Lmtt;->c(Lmtm;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "MIN_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, v0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lmto;

    const-string v1, "Failed to read host package version"

    invoke-direct {v0, v1, p1}, Lmto;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
