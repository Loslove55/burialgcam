.class public final Lmwy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lohh;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    invoke-static {v0}, Luu;->a(Z)V

    iput-object p1, p0, Lmwy;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Lohh;->a(I)Lohd;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmxb;->a:Lolz;

    invoke-virtual {v5}, Lolg;->b()Lolu;

    move-result-object v5

    check-cast v5, Lolx;

    const-string v6, "com/google/android/libraries/lens/view/dynamic/shared/ReflectionProxyFactory$ReflectionTypeMapping"

    const-string v7, "createMethodMapping"

    const/16 v8, 0x79

    const-string v9, "ReflectionProxyFactory.java"

    invoke-interface {v5, v6, v7, v8, v9}, Lolx;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lolu;

    move-result-object v5

    check-cast v5, Lolx;

    const-string v6, "Found matching signature with non-matching return type: %s (local=%s, remote=%s)"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v5, v6, v7, v3, v4}, Lolx;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3, v4}, Lohd;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lohd;->a()Lohh;

    move-result-object p1

    iput-object p1, p0, Lmwy;->b:Lohh;

    return-void
.end method
