.class final synthetic Lhux;
.super Ljava/lang/Object;

# interfaces
.implements Lhub;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhux;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lhux;->a:Landroid/content/Context;

    sget v0, Lhuz;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method
