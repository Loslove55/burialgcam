.class public final Lkzo;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private final a:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "JobSchedulerCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/job/JobInfo;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-class v4, Landroid/app/job/JobScheduler;

    const-string v5, "scheduleAsPackage"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No scheduleAsPackage method available, falling back to schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object v1, v3

    goto :goto_0

    :cond_0
    nop

    move-object v1, v3

    :goto_0
    sput-object v1, Lkzo;->b:Ljava/lang/reflect/Method;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    const-string v4, "myUserId"

    move-object v5, v3

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "No myUserId method available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_2

    :cond_1
    nop

    :goto_1
    nop

    :goto_2
    sput-object v3, Lkzo;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzo;->a:Landroid/app/job/JobScheduler;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-object v1, Lkzo;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lkzo;

    invoke-direct {p0, v0}, Lkzo;-><init>(Landroid/app/job/JobScheduler;)V

    sget-object v0, Lkzo;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const/4 v2, 0x6

    const-string v3, "JobSchedulerCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "myUserId invocation illegal"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    nop

    :goto_1
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lkzo;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v3, p0, Lkzo;->a:Landroid/app/job/JobScheduler;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 p2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p2

    const/4 p2, 0x3

    aput-object p3, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    :goto_3
    const-string v0, "error calling scheduleAsPackage"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object p0, p0, Lkzo;->a:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
