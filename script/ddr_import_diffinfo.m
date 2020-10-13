%% テキスト ファイルからのデータのインポート
% 次のテキスト ファイルからデータをインポートするスクリプト:
%
%    ファイル名: ddr_diffinfo_list.csv
%
% MATLAB からの自動生成日: 2020/10/13 06:05:08

%% インポート オプションの設定およびデータのインポート
opts = delimitedTextImportOptions("NumVariables", 13);

% 範囲と区切り記号の指定
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% 列名と型の指定
opts.VariableNames = ["id", "Il6980di8P89lil1PDIqqIbiq1QO8lQ", "besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp", "title", "artist"];
opts.VariableTypes = ["double", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string", "string"];

% ファイル レベルのプロパティを指定
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% 変数プロパティを指定
opts = setvaropts(opts, ["Il6980di8P89lil1PDIqqIbiq1QO8lQ", "title", "artist"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Il6980di8P89lil1PDIqqIbiq1QO8lQ", "title", "artist"], "EmptyFieldRule", "auto");

% データのインポート
ddr_all_songs = readtable("../data/ddr_diffinfo_all.csv", opts);


%% 一時変数のクリア
clear opts